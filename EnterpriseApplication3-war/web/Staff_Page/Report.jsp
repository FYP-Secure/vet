<%-- 
    Document   : Home
    Created on : Mar 7, 2024, 2:04:33 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class='container' style="margin-top: 10px">
    <canvas id="reportChart" style="width:100%;max-width:1200px"></canvas>
</div>


<script>
    const xValues = ["Monday", "Tuesday", "Wednesday", "ThursDay", "Friday", "Saturday", "Sunday"];
    const yValues = [55, 49, 44, 24, 30, 22, 44];
    const barColors = ["red", "green", "blue", "orange", "brown"];

    new Chart("reportChart", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
                    backgroundColor: 'blue',
                    data: yValues
                }]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Weekly Report (7 days)"
            }
        }
    });
</script>