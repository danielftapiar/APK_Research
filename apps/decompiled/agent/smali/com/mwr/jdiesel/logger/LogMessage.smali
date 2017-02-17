.class public Lcom/mwr/jdiesel/logger/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LEVEL:Ljava/lang/String; = "log:level"

.field public static final MESSAGE:Ljava/lang/String; = "log:message"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# instance fields
.field private level:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mwr/jdiesel/logger/LogMessage;->level:I

    .line 26
    iput-object p2, p0, Lcom/mwr/jdiesel/logger/LogMessage;->message:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const-string v0, "log:level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "log:message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mwr/jdiesel/logger/LogMessage;-><init>(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/mwr/jdiesel/logger/LogMessage;-><init>(ILjava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/mwr/jdiesel/logger/LogMessage;->level:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mwr/jdiesel/logger/LogMessage;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mwr/jdiesel/logger/LogMessage;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "No message."

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "log:level"

    invoke-virtual {p0}, Lcom/mwr/jdiesel/logger/LogMessage;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "log:message"

    invoke-virtual {p0}, Lcom/mwr/jdiesel/logger/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method
