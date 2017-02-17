.class Lcl/santander/smartphone/TransferTerceros$2;
.super Ljava/lang/Object;
.source "TransferTerceros.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTerceros;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferTerceros;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTerceros;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 133
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 139
    iget-object v2, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v2, v2, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 140
    .local v1, "valor":Landroid/text/Editable;
    invoke-static {v1}, Lcl/santander/smartphone/Utils;->checkNombre(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "filtrado":Ljava/lang/String;
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v2, v2, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v2, v2, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    iget-object v3, v3, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/TransferTerceros$2;->this$0:Lcl/santander/smartphone/TransferTerceros;

    # invokes: Lcl/santander/smartphone/TransferTerceros;->cambiaEstadoBoton()V
    invoke-static {v2}, Lcl/santander/smartphone/TransferTerceros;->access$0(Lcl/santander/smartphone/TransferTerceros;)V

    .line 147
    return-void
.end method
