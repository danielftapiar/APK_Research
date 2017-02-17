.class Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientosTarjeta.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)V

    return-void
.end method

.method private getMails()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_mails_split:Landroid/widget/EditText;
    invoke-static {v6}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$7(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "input":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    const/4 v0, 0x0

    .line 439
    .local v0, "end":I
    const-string v6, ";"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 441
    :goto_0
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 452
    .local v4, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 455
    return-object v4

    .line 444
    .end local v2    # "j":I
    .end local v4    # "result":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v5, v0, 0x1

    .line 446
    const-string v6, ";"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 453
    .restart local v2    # "j":I
    .restart local v4    # "result":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private sendMail()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 372
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_mail:Landroid/widget/EditText;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$5(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "mail":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v7, "android.intent.extra.EMAIL"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v7, "android.intent.extra.SUBJECT"

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v9, 0x7f05010e

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "body":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050110

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050112

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v8}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 389
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050113

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050114

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v1

    .line 396
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "meslow":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "mes":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " de "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v8, v8, 0x76c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "fecha":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 404
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050115

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_1
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 410
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050116

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_2
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 416
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050117

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_3
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 422
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050118

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_4
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-virtual {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050106

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->startActivity(Landroid/content/Intent;)V

    .line 430
    return-void
.end method

.method private sendSplit()V
    .locals 11

    .prologue
    const v10, 0x7f05011c

    .line 460
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->getMails()[Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "mails":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v7, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v7, "android.intent.extra.SUBJECT"

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v9, 0x7f05010f

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "body":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050111

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v9, 0x7f050119

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v8}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 474
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f05011b

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->monto:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f05011a

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v1

    .line 482
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "meslow":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "mes":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " de "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v8, v8, 0x76c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "fecha":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 491
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050115

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->num_mov:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_1
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 497
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050116

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->descripcion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_2
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 503
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050117

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->observacion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_3
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 509
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f050118

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->referencia:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_4
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 515
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-virtual {v7, v10}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v7, " 1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 527
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    const v8, 0x7f05011d

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_5
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-virtual {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050106

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void

    .line 520
    :cond_6
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-virtual {v7, v10}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v1, v1, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 541
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_mail:Landroid/widget/EditText;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$5(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 543
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->rb_mail:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$3(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->sendMail()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->rb_split:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$4(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$MyOnClickListener;->sendSplit()V

    goto :goto_0
.end method
