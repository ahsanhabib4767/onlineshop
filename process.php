<?php
foreach ($_POST['item_name'] as $key=>$itmname)
            {
                $title = $_POST['item_name'][$key];
                $courseID = $_POST['item_id'][$key];
                $qty = $_POST['item_qty'][$key];
                $fee = $_POST['item_fee'][$key];
                $subtotal = $_POST['item_subtotal'][$key];
                $totalFee += $subtotal;
                $date=date("d-m-Y");
                $array = array("title"=>$title, "course_id"=>$courseID, "qty"=>$qty, "fee"=>$fee, "subtotal"=>$subtotal, "user_id"=>$_SESSION["user_id"], "date"=>$date, "order_number"=>$orderNumber);
                $results = insert($array,"booking");
            }


?>
