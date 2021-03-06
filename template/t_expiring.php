<!--content-->
<?php $noti = ""; ?>
<div class="container documents">
    <div class="row">
        <div class="col-sm-6">
            <!-- ส่วนหุ้ม ตู้เย็น -->
            <div class="jumbotron">
                <!-- ฝั่งซ้าย -->
                <div class="col-xs-6" style="padding-left: 0">
                    <div class="refrige">
                        <table>
                            <tr class="freeze">
                                <td class="<?php echo $refrige['FREEZE']; ?>" style="<?php echo $freshboxcolor['FREEZE']; ?>">FREEZE</td>
                            </tr>
                            <tr class="clearrow">
                                <td></td>
                            </tr>
                            <tr class="clearrow2">
                                <td></td>
                            </tr>
                            <tr class="meat">
                                <td class="<?php echo $refrige['MEAT']; ?>" style="<?php echo $freshboxcolor['MEAT']; ?>">MEAT</td>
                            </tr>
                            <tr class="other2">
                                <td class="<?php echo $refrige['OTHER1']; ?>" style="<?php echo $freshboxcolor['OTHER1']; ?>">OTHER1</td>
                            </tr>
                            <tr class="other2">
                                <td class="<?php echo $refrige['OTHER2']; ?>" style="<?php echo $freshboxcolor['OTHER2']; ?>">OTHER2</td>
                            </tr>
                            <tr class="vegetable">
                                <td class="<?php echo $refrige['VEGETABLE']; ?>" style="<?php echo $freshboxcolor['VEGETABLE']; ?>">VEGETABLE</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!-- ฝั่งขวา -->
                <div class="col-xs-6" style="padding-right: 0">
                    <div class="refrige">
                        <table>
                            <tr class="row1">
                                <td class="<?php echo $refrige['A1']; ?>" style="<?php echo $freshboxcolor['A1']; ?>">A1</td>
                                <td class="<?php echo $refrige['A2']; ?>" style="<?php echo $freshboxcolor['A2']; ?>">A2</td>
                                <td class="<?php echo $refrige['A3']; ?>" style="<?php echo $freshboxcolor['A3']; ?>">A3</td>
                                <td class="<?php echo $refrige['A4']; ?>" style="<?php echo $freshboxcolor['A4']; ?>">A4</td>
                                <td class="<?php echo $refrige['A5']; ?>" style="<?php echo $freshboxcolor['A5']; ?>">A5</td>
                                <td class="<?php echo $refrige['A6']; ?>" style="<?php echo $freshboxcolor['A6']; ?>">A6</td>
                                <td class="<?php echo $refrige['A7']; ?>" style="<?php echo $freshboxcolor['A7']; ?>">A7</td>
                            </tr>
                            <tr class="row1">
                                <td class="<?php echo $refrige['B1']; ?>" style="<?php echo $freshboxcolor['B1']; ?>">B1</td>
                                <td class="<?php echo $refrige['B2']; ?>" style="<?php echo $freshboxcolor['B2']; ?>">B2</td>
                                <td class="<?php echo $refrige['B3']; ?>" style="<?php echo $freshboxcolor['B3']; ?>">B3</td>
                                <td class="<?php echo $refrige['B4']; ?>" style="<?php echo $freshboxcolor['B4']; ?>">B4</td>
                                <td class="<?php echo $refrige['B5']; ?>" style="<?php echo $freshboxcolor['B5']; ?>">B5</td>
                                <td class="<?php echo $refrige['B6']; ?>" style="<?php echo $freshboxcolor['B6']; ?>">B6</td>
                                <td class="<?php echo $refrige['B7']; ?>" style="<?php echo $freshboxcolor['B7']; ?>">B7</td>
                            </tr>
                            <tr class="C">
                                <td colspan="4" class="clearcell"></td>
                                <td rowspan="2" class="<?php echo $refrige['C1']; ?>" style="<?php echo $freshboxcolor['C1']; ?>">C1</td>
                                <td rowspan="2" class="<?php echo $refrige['C2']; ?>" style="<?php echo $freshboxcolor['C2']; ?>">C2</td>
                                <td rowspan="2" class="<?php echo $refrige['C3']; ?>" style="<?php echo $freshboxcolor['C3']; ?>">C3</td>
                            </tr>
                            <tr class="D">
                                <td colspan="2" rowspan="3" class="<?php echo $refrige['D1']; ?>" style="<?php echo $freshboxcolor['D1']; ?>">D1</td>
                                <td colspan="2" rowspan="3" class="<?php echo $refrige['D2']; ?>" style="<?php echo $freshboxcolor['D2']; ?>">D2</td>
                            </tr>
                            <tr class="clearrow">
                                <td colspan="3"></td>
                            </tr>
                            <tr class="Dright">
                                <td class="<?php echo $refrige['D3']; ?>" style="<?php echo $freshboxcolor['D3']; ?>">D3</td>
                                <td class="<?php echo $refrige['D4']; ?>" style="<?php echo $freshboxcolor['D4']; ?>">D4</td>
                                <td class="<?php echo $refrige['D5']; ?>" style="<?php echo $freshboxcolor['D5']; ?>">D5</td>
                            </tr>
                            <tr class="clearrow">
                                <td colspan="7"></td>
                            </tr>
                            <tr class="E">
                                <td colspan="2" class="<?php echo $refrige['E1']; ?>" style="<?php echo $freshboxcolor['E1']; ?>">E1</td>
                                <td colspan="2" class="<?php echo $refrige['E2']; ?>" style="<?php echo $freshboxcolor['E2']; ?>">E2</td>
                                <td colspan="3" style="padding: 0">
                                    <table class="Eright">
                                        <tr>
                                            <td class="<?php echo $refrige['E3']; ?>" style="<?php echo $freshboxcolor['E3']; ?>">E3</td>
                                            <td class="<?php echo $refrige['E4']; ?>" style="<?php echo $freshboxcolor['E4']; ?>">E4</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12 text-right">
                    <img src="img/thermometer.png" style="width: 32px"> <?php echo $temperature ?> °C
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="panel panel-danger">
                <div class="panel-heading">รายการของใกล้หมดอายุ</div>
                <table id="newtable2" class="table table-hover" stryle="font-size: 12px">
                    <thead class="hidden">
                        <tr>
                            <th style="white-space: nowrap;"><i class="glyphicon glyphicon-barcode"></i> ตำแหน่ง</th>
                            <th style="white-space: nowrap;" class="hidden-xs" style="width: 68px"><i class="glyphicon glyphicon-barcode"></i> สินค้า</th>
                            <th style="white-space: nowrap;">ชื่อสินค้า</th>
                            <th style="white-space: nowrap;">วันหมดอายุ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if ($expiringdata) {
                            foreach ($expiringdata as $row) {
                                $colornoti = expirewarningcolor($row['expire_date']);
                                $expiretext = expireremain($row['expire_date']);
                                echo "<tr style='$colornoti'>
                                        <td colspan='4'>
                                            <div class='card'>
                                                <span class='title'>$row[product_barcode]</span><span>$row[name]</span>
                                            </div>
                                            <div class='card'>
                                                <span>$row[slot_barcode] ($row[slot_name]) | เพิ่มเมื่อ " . DateTime2Buddish($row[insert_date]) . "</span><span class='expire'>$expiretext</span>
                                            </div>
                                        </td>
                                    </tr>";
                            }
                        } else {
                            echo "<tr><td colspan='4'>ไม่พบสินค้าใกล้หมดอายุ หรือสินค้าที่กำลังจะหมดอายุภายใน " . expire_day_notify . " วัน</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>