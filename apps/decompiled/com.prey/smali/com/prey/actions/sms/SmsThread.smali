.class public Lcom/prey/actions/sms/SmsThread;
.super Ljava/lang/Thread;
.source "SmsThread.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private messageSMS:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "messageSMS"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/prey/actions/sms/SmsThread;->messageSMS:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/prey/actions/sms/SmsThread;->ctx:Landroid/content/Context;

    .line 20
    iput-object p3, p0, Lcom/prey/actions/sms/SmsThread;->phoneNumber:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/prey/actions/sms/SmsThread;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/prey/actions/sms/SmsThread;->messageSMS:Ljava/lang/String;

    iget-object v2, p0, Lcom/prey/actions/sms/SmsThread;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/prey/actions/sms/SMSFactory;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
