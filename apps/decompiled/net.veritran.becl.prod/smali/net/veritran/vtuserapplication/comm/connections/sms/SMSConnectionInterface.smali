.class public interface abstract Lnet/veritran/vtuserapplication/comm/connections/sms/SMSConnectionInterface;
.super Ljava/lang/Object;


# static fields
.field public static final PROTOCOL:Ljava/lang/String; = "sms://"


# virtual methods
.method public abstract freeResources()V
.end method

.method public abstract sendMessage([Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendMessageBlocked([Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract setConnectionTimeOut(I)V
.end method

.method public abstract setListener(Lnet/veritran/vtuserapplication/comm/connections/sms/SMSConnectionListener;)V
.end method
