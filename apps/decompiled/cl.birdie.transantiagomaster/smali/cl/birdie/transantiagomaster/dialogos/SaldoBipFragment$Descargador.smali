.class final Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;
.super Landroid/os/AsyncTask;
.source "SaldoBipFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Descargador"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field private buscando:Z

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->buscando:Z

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;-><init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final mostrarDialogo()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->buscando:Z

    .line 71
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarAddTask()V

    .line 73
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    check-cast p1, [B

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->buscando:Z

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarRemoveTask()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v1, 0x7f0600d8

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtSaldoBip:Landroid/widget/TextView;

    if-nez v2, :cond_3

    const-string v0, "SaldoBipFragment"

    const-string v1, "txtSaldoBip es nulo, saliendo!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtSaldoBip:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtFechaSaldo:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v6, v5, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v6, v5, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pError:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v3, "TSM"

    const-string v4, "SaldoBip"

    const-string v5, "error"

    invoke-interface {v0, v3, v4, v5}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pGlosa:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Error en la descarga, por favor consulte en la p\u00e1gina oficial de la tarjeta Bip!"

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pSaldo:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v7, "TSM"

    const-string v8, "SaldoBip"

    const-string v9, "exito"

    invoke-interface {v6, v7, v8, v9}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    move v0, v1

    :cond_9
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pFecha:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    :goto_2
    if-eqz v1, :cond_1

    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_2
.end method
