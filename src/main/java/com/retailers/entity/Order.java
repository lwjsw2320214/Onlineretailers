package com.retailers.entity;

import com.retailers.common.Base.BaseEntity;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by GC on 2016/12/28.
 */
public class Order extends BaseEntity {

    @NotBlank(message = "编号不能为空")
    private String gasNumber;
    @NotBlank(message = "订单号不能为空")
    private String orderNumber;
    @Max(value = 99999,message = "最大只能为99999")
    @Min(value = 0,message = "最小只能为0")
    private Integer firstScale;
    @Max(value = 99999,message = "最大只能为99999")
    @Min(value = 0,message = "最小只能为0")
    private Integer lastScale;
    private Integer total;
    @DecimalMin(value ="0",message = "")
    private BigDecimal unitPrice;
    private BigDecimal paymentAmount;
    private Date firstTime;
    private Date createTime;
    private Integer paymentState;
    private Integer paymentType;
    private String paymentAccount;
    private BigDecimal actualPayment;
    private Date paymentTime;

    public String getGasNumber() {
        return gasNumber;
    }

    public void setGasNumber(String gasNumber) {
        this.gasNumber = gasNumber;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Integer getFirstScale() {
        return firstScale;
    }

    public void setFirstScale(Integer firstScale) {
        this.firstScale = firstScale;
    }

    public Integer getLastScale() {
        return lastScale;
    }

    public void setLastScale(Integer lastScale) {
        this.lastScale = lastScale;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(BigDecimal paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public Date getFirstTime() {
        return firstTime;
    }

    public void setFirstTime(Date firstTime) {
        this.firstTime = firstTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getPaymentState() {
        return paymentState;
    }

    public void setPaymentState(Integer paymentState) {
        this.paymentState = paymentState;
    }

    public Integer getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(Integer paymentType) {
        this.paymentType = paymentType;
    }

    public String getPaymentAccount() {
        return paymentAccount;
    }

    public void setPaymentAccount(String paymentAccount) {
        this.paymentAccount = paymentAccount;
    }

    public Date getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    public BigDecimal getActualPayment() {
        return actualPayment;
    }
    public void setActualPayment(BigDecimal actualPayment) {
        this.actualPayment = actualPayment;
    }
}
