<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Currency Converter</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' href='style.css'>
</head>


<?php


$rates = "0";
$res = "0";

$amount1 = "";


$inputFile = fopen("CurrencyInput.txt", "r");

$txt = "";


try {
    $txtFrom = '';
    $txtTo = '';

    while (!feof($inputFile)) {

        $fromCurrency = isset($_POST['from']) ? $_POST['from'] : 'USD';
        $toCurrency = isset($_POST['to']) ? $_POST['to'] : 'ILS';

        $line = fgets($inputFile);

        $currency = substr($line, 0, 3);

        $selectedFrom = ($currency == $fromCurrency) ? 'selected' : '';
        $selectedTo = ($currency == $toCurrency) ? 'selected' : '';
        $txtFrom = $txtFrom . '<option value="' . $currency . '" ' . $selectedFrom . '>' . $line . '</option>';
        $txtTo = $txtTo . '<option value="' . $currency . '" ' . $selectedTo . '>' . $line . '</option>';
    }
} catch (Exception $e) {
    // Handle JSON parse error...
}


if (isset($_POST['amo']) && isset($_POST["submit"])) {
    $fromCurrency = $_POST['from'];
    $toCurrency = $_POST['to'];
    $amount = $_POST['amo'];

    $req_url = 'https://v6.exchangerate-api.com/v6/2e2c6f7fc6314770c6bc3b3b/pair/' . $fromCurrency . '/' . $toCurrency;
    $response_json = file_get_contents($req_url);

    if (false !== $response_json) {
        try {
            $response = json_decode($response_json);
            if ('success' === $response->result) {
                $rates = $response->conversion_rate;
                if ($amount == "") {
                    $res = "You must fill Amount of currency !!";
                } elseif ($amount < 0) {
                    $res = "Amount of currency can't be negative !!";
                } elseif ($amount == 0) {
                    $res = "Amount of currency can't be zero !!";
                } else {
                    $converted_amount = $amount * $rates;

                    $res = sprintf("%.2f", $converted_amount);

                }
            }
        } catch (Exception $e) {
            // Handle JSON parse error...
        }
    }
}

?>


<body>

<hr>
<form action="index.php" method="post">
    <label for="amoTXT">Amount</label><br>
    <input name="amo" id="amoTXT" value="<?php echo $amount1 ?>"> <br>
    <label for="selectFrom">From</label><br>
    <select name="from" id="selectFrom">
        <?php echo $txtFrom ?>
    </select><br>
    <label for="selectTo">To</label><br>
    <select name="to" id="selectTo">
        <?php echo $txtTo ?>
    </select><br>
    <input type="submit" id="submitInput" value="Convert" name="submit">
    <hr>
    <label for="resultInput">Result</label>
    <input type="text" name="result" id="resultInput" value="<?php echo $res ?>" disabled>
    <label for="rateInput">Rate used</label>
    <input type="text" id="rateInput" value="<?php echo $rates ?>" disabled>
</form>
</body>

</html>