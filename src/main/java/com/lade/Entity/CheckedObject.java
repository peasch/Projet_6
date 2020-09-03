package com.lade.Entity;


public class CheckedObject {
    private String name="";
    private boolean checked=false;

    public CheckedObject() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }
}
