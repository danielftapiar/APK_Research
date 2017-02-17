.class final Lcl/birdie/transantiagomaster/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onShowSpeechHelp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$32;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2757
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$32;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->checkVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2761
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->speech:Lcl/birdie/transantiagomaster/speech/Speech;

    .line 2762
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerVoz()V

    .line 2772
    :goto_0
    return-void

    .line 2765
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$32;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2766
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$32;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v2, 0x7f0600f9

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2767
    const/4 v2, 0x1

    .line 2764
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2767
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
