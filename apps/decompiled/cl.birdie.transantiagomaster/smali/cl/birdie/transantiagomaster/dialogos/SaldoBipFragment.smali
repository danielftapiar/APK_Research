.class public Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SaldoBipFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;,
        Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;
    }
.end annotation


# instance fields
.field btnBuscar:Landroid/widget/Button;

.field btnEscanear:Landroid/widget/Button;

.field edtNumeroBip:Landroid/widget/EditText;

.field edtRut:Landroid/widget/EditText;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field private m_progressTask:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

.field pError:Ljava/util/regex/Pattern;

.field pFecha:Ljava/util/regex/Pattern;

.field pGlosa:Ljava/util/regex/Pattern;

.field pSaldo:Ljava/util/regex/Pattern;

.field trRut:Landroid/widget/TableRow;

.field txtFechaSaldo:Landroid/widget/TextView;

.field txtSaldoBip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->m_progressTask:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

    return-void
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->m_progressTask:Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$Descargador;

    return-object v0
.end method


# virtual methods
.method public final buscarSaldoBip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "rut"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v1, 0x7f0600d7

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->SaldoBipURL:Ljava/lang/String;

    .line 166
    const-string v1, "{0}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "{1}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 169
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object p1, v0, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    .line 170
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object p2, v0, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    .line 172
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;

    invoke-direct {v0, p0, p1, p2}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;-><init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://200.6.67.22/PortalCAE-WAR-MODULE/SesionPortalServlet?NumTarjeta={0}&accion=10"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$DescargadorTipoTarjeta;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    if-eqz p3, :cond_0

    .line 452
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 453
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 463
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const-string v2, "SCAN_RESULT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 457
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v1, v2, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    .line 458
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 459
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtNumeroBip:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtRut:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->buscarSaldoBip(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 486
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-void

    .line 488
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    const-string v0, "TransantiagoMaster"

    const-string v1, "SaldoBipFragment: onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->setRetainInstance(Z)V

    .line 472
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpSaldo:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 471
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pSaldo:Ljava/util/regex/Pattern;

    .line 474
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpFecha:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 473
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pFecha:Ljava/util/regex/Pattern;

    .line 476
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpError:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 475
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pError:Ljava/util/regex/Pattern;

    .line 478
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v0, v0, Lcl/birdie/params/Preferencias;->SaldoBipRegexpGlosaError:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 477
    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->pGlosa:Ljava/util/regex/Pattern;

    .line 480
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 372
    const v1, 0x7f030059

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtNumeroBip:Landroid/widget/EditText;

    .line 377
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtNumeroBip:Landroid/widget/EditText;

    .line 380
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipNumero:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    .line 383
    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtRut:Landroid/widget/EditText;

    .line 385
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 386
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 387
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->edtRut:Landroid/widget/EditText;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipRut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipTipoTarjeta:I

    packed-switch v1, :pswitch_data_0

    .line 400
    :cond_2
    :goto_0
    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtSaldoBip:Landroid/widget/TextView;

    .line 401
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtFechaSaldo:Landroid/widget/TextView;

    .line 403
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 404
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 405
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtSaldoBip:Landroid/widget/TextView;

    .line 406
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipValor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_3
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 408
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v1, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 409
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtFechaSaldo:Landroid/widget/TextView;

    .line 410
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v2, Lcl/birdie/params/Preferencias;->SaldoBipFecha:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_4
    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->btnEscanear:Landroid/widget/Button;

    .line 413
    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->btnBuscar:Landroid/widget/Button;

    .line 415
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->btnEscanear:Landroid/widget/Button;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->btnBuscar:Landroid/widget/Button;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    return-object v0

    .line 391
    :pswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v1}, Landroid/widget/TableRow;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 392
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v1}, Landroid/widget/TableRow;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 396
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->trRut:Landroid/widget/TableRow;

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->txtSaldoBip:Landroid/widget/TextView;

    .line 502
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 503
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 495
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 496
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 62
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SaldoBipFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/SaldoBip"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
