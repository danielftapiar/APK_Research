.class public interface abstract Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;
.super Ljava/lang/Object;


# static fields
.field public static final GENERAL_EXCEPTION:I = 0x64

.field public static final INTERNET_CONNECTION_NOT_AVAILABLE:I = 0x66

.field public static final SENDER_ID_NULL:I = 0x67

.field public static final SERVICE_NOT_AVAILABLE:I = 0x65


# virtual methods
.method public abstract addListener(Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;)V
.end method

.method public abstract doRegister(Ljava/lang/String;)V
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract removeAllListener()V
.end method

.method public abstract unRegister()V
.end method
