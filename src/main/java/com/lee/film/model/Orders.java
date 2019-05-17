package com.lee.film.model;


public class Orders {

  private long id;
  private String uid;
  private String place;
  private String state;
  private long price;
  private String times;
  private String seat;
  private String fid;
  private String booktime;
  private String oid;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getOid() {
    return oid;
  }

  public void setOid(String oid) {
    this.oid = oid;
  }

  public String getBooktime() {
    return booktime;
  }

  public void setBooktime(String booktime) {
    this.booktime = booktime;
  }

  public String getUid() {
    return uid;
  }

  public void setUid(String uid) {
    this.uid = uid;
  }


  public String getPlace() {
    return place;
  }

  public void setPlace(String place) {
    this.place = place;
  }


  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }


  public long getPrice() {
    return price;
  }

  public void setPrice(long price) {
    this.price = price;
  }


  public String getTimes() {
    return times;
  }

  public void setTimes(String times) {
    this.times = times;
  }


  public String getSeat() {
    return seat;
  }

  public void setSeat(String seat) {
    this.seat = seat;
  }


  public String getFid() {
    return fid;
  }

  public void setFid(String fid) {
    this.fid = fid;
  }

}
