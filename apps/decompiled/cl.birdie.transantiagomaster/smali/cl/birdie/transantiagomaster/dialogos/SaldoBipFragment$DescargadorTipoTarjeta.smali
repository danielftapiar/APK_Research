.class final Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;
.super Landroid/os/AsyncTask;
.source "SaldoBipFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorTipoTarjeta"
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
.field bipid:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "bipid"    # Ljava/lang/String;
    .param p3, "rut"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 223
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->bipid:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->rut:Ljava/lang/String;

    .line 225
    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarAddTask()V

    :cond_0
    const-string v0, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?NumTarjeta={0}&accion=10"

    const-string v1, "{0}"

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->bipid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const v8, 0x7f0600d9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1
    check-cast p1, [B

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onProgressBarRemoveTask()V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "tarjeta"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_a

    move v3, v2

    move v1, v2

    :goto_0
    :try_start_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lt v3, v0, :cond_3

    move v0, v1

    :goto_1
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    const-string v3, "{0}"

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->bipid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{1}"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DescargadorTipoTarjeta: consulta bip: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v0, v7}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_1
    const-string v0, "{3}"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput v2, v1, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    :goto_2
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-direct {v3, v4, v2}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;-><init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;B)V

    invoke-static {v1, v3}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->access$0(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->m_progressTask:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

    move-result-object v1

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->mostrarDialogo()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->m_progressTask:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;->SALDO_BIP:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCount(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMostrarIntersticial()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_2
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v5, "tipo"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput v6, v0, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-virtual {v1, v8}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->rut:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->rut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->this$0:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;

    invoke-virtual {v1, v8}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto :goto_3

    :cond_9
    const-string v0, "{3}"

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->rut:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method
