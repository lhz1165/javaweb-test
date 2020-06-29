package com.logBean;

/**
 * @author: lhz
 * @date: 2020/6/28
 **/
public class Calculator {
    private String firOpd;
    private String sndOpd;
    private double result;
    private String operator;

    public void setFirOpd(String firOpd) {
        this.firOpd = firOpd;
    }

    public String getFirOpd() {
        return firOpd;
    }

    public void setSndOpd(String sndOpd) {
        this.sndOpd = sndOpd;
    }

    public String getSndOpd() {
        return sndOpd;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getOperator() {
        return operator;
    }

    public double getResult() {
        return result;
    }

    public void calculate() {
        double fir = Double.parseDouble(firOpd);
        double snd = Double.parseDouble(sndOpd);

        try {
            if(operator.equals("+"))
                result = fir + snd;
            else if(operator.equals("-"))
                result = fir - snd;
            else if(operator.equals("*"))
                result = fir * snd;
            else if(operator.equals("/"))
                result = fir / snd;
        }catch (ArithmeticException ae) {
            ae.printStackTrace();
        }
    }

}
