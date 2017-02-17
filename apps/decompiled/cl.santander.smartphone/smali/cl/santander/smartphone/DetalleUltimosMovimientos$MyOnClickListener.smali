.class Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;)V

    return-void
.end method

.method private getMails()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mails_split:Landroid/widget/EditText;
    invoke-static {v6}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$7(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "input":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    const/4 v0, 0x0

    .line 426
    .local v0, "end":I
    const-string v6, ";"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 428
    :goto_0
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 439
    .local v4, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 442
    return-object v4

    .line 431
    .end local v2    # "j":I
    .end local v4    # "result":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v5, v0, 0x1

    .line 433
    const-string v6, ";"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 440
    .restart local v2    # "j":I
    .restart local v4    # "result":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private sendMail()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 359
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mail:Landroid/widget/EditText;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$5(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "mail":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v7, "android.intent.extra.EMAIL"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v7, "android.intent.extra.SUBJECT"

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v9, 0x7f05010e

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "body":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050110

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050112

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
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

    .line 374
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 376
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050113

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050114

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v1

    .line 383
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 384
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

    .line 385
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

    .line 387
    .local v2, "fecha":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 391
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050115

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_1
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 397
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050116

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_2
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 403
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050117

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_3
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 409
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050118

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_4
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-virtual {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050106

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method private sendSplit()V
    .locals 11

    .prologue
    const v10, 0x7f05011c

    .line 447
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->getMails()[Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "mails":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v7, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v7, "android.intent.extra.SUBJECT"

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v9, 0x7f05010f

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, "body":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050111

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v9, 0x7f050119

    invoke-virtual {v8, v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

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

    .line 459
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 461
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f05011b

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f05011a

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v1

    .line 469
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 470
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

    .line 471
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

    .line 473
    .local v2, "fecha":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050115

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_1
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 484
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050116

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_2
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 490
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050117

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_3
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v7, v7, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 496
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f050118

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, v8, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_4
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

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

    .line 502
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-virtual {v7, v10}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v7, " 1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_0
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v7}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/TextView;

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

    .line 514
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    const v8, 0x7f05011d

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/TextView;

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

    .line 518
    :cond_5
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-virtual {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050106

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void

    .line 507
    :cond_6
    iget-object v7, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-virtual {v7, v10}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v8}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

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
    .line 527
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v1, v1, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 528
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mail:Landroid/widget/EditText;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$5(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 530
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_mail:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$3(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->sendMail()V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_split:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$4(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;->sendSplit()V

    goto :goto_0
.end method
