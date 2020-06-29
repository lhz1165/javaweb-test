package com.logBean;

/**
 * @author: lhz
 * @date: 2020/6/28
 **/
public class LogBean {
    String username;
    String password;
    String trueName;
    String sex;
    String address;
    String phone;

    public LogBean(String username, String password, String trueName, String sex, String address, String phone) {
        this.username = username;
        this.password = password;
        this.trueName = trueName;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTrueName() {
        return trueName;
    }

    public void setTrueName(String trueName) {
        this.trueName = trueName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
