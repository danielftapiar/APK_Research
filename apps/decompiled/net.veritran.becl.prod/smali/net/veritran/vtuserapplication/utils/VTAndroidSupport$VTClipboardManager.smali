.class public Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;
.super Ljava/lang/Object;
.source "VTAndroidSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTClipboardManager"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private useOldManager:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->useOldManager:Z

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .local v0, "currentapiVersion":I
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->useOldManager:Z

    .line 68
    :cond_0
    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private getManager()Landroid/content/ClipboardManager;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private getOldManager()Landroid/text/ClipboardManager;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 96
    iget-boolean v2, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->useOldManager:Z

    if-nez v2, :cond_1

    .line 98
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getManager()Landroid/content/ClipboardManager;

    move-result-object v1

    .line 99
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 100
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-object v2

    .line 100
    .restart local v0    # "clip":Landroid/content/ClipData;
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_1
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getOldManager()Landroid/text/ClipboardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public hasText()Z
    .locals 3

    .prologue
    .line 111
    iget-boolean v2, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->useOldManager:Z

    if-nez v2, :cond_1

    .line 113
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getManager()Landroid/content/ClipboardManager;

    move-result-object v1

    .line 114
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 115
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 119
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return v2

    .line 115
    .restart local v0    # "clip":Landroid/content/ClipData;
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_1
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getOldManager()Landroid/text/ClipboardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v2

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-boolean v2, p0, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->useOldManager:Z

    if-nez v2, :cond_1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getManager()Landroid/content/ClipboardManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "ise":Ljava/lang/IllegalStateException;
    const-string v2, "LOG"

    const-string v3, "To avoid fortify issue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    :cond_1
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport$VTClipboardManager;->getOldManager()Landroid/text/ClipboardManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
