.class public Lde/viktorreiser/toolbox/app/SafeClipboard;
.super Landroid/app/Service;
.source "SafeClipboard.java"


# static fields
.field private static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final EXTRA_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static mToastImage:I

.field private static mToastMessage:Ljava/lang/String;

.field private static mToastMessageRes:I


# instance fields
.field private mCurrentText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mRunable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput v1, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I

    .line 56
    const-string v0, ""

    sput-object v0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;

    .line 59
    sput v1, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mCurrentText:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lde/viktorreiser/toolbox/app/SafeClipboard$1;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/app/SafeClipboard$1;-><init>(Lde/viktorreiser/toolbox/app/SafeClipboard;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mRunable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/app/SafeClipboard;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I

    return v0
.end method

.method public static setClearToast(I)V
    .locals 0
    .param p0, "textRes"    # I

    .prologue
    .line 146
    sput p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I

    .line 147
    return-void
.end method

.method public static setClearToast(II)V
    .locals 0
    .param p0, "textRes"    # I
    .param p1, "imageRes"    # I

    .prologue
    .line 170
    sput p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessageRes:I

    .line 171
    sput p1, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I

    .line 172
    return-void
.end method

.method public static setClearToast(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static setClearToast(Ljava/lang/String;I)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageRes"    # I

    .prologue
    .line 185
    sput-object p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastMessage:Ljava/lang/String;

    .line 186
    sput p1, Lde/viktorreiser/toolbox/app/SafeClipboard;->mToastImage:I

    .line 187
    return-void
.end method

.method public static setText(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 121
    .line 122
    const-string v2, "clipboard"

    .line 121
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 124
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/viktorreiser/toolbox/app/SafeClipboard;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, "service":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "timeout"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 223
    iget-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 206
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mCurrentText:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object v0, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/viktorreiser/toolbox/app/SafeClipboard;->mRunable:Ljava/lang/Runnable;

    const-string v2, "timeout"

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
