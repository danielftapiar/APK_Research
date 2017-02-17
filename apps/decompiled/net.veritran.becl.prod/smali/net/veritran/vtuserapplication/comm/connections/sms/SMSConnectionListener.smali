.class public interface abstract Lnet/veritran/vtuserapplication/comm/connections/sms/SMSConnectionListener;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_GENERIC:I = 0x5

.field public static final ERROR_ILLEGALARGUMENT:I = 0x2

.field public static final ERROR_INTERRUPTEDIO:I = 0x3

.field public static final ERROR_IO:I = 0x1

.field public static final ERROR_SECURITY:I = 0x4

.field public static final NO_ERROR:I


# virtual methods
.method public abstract handleOutgoingError(I)V
.end method

.method public abstract handleOutgoingOk()V
.end method
