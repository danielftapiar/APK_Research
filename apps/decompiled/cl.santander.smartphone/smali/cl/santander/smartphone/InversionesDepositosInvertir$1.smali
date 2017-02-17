.class Lcl/santander/smartphone/InversionesDepositosInvertir$1;
.super Ljava/lang/Object;
.source "InversionesDepositosInvertir.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosInvertir;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosInvertir;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, v5, Lcl/santander/smartphone/InversionesDepositosInvertir;->et_monto:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->monto:Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, v5, Lcl/santander/smartphone/InversionesDepositosInvertir;->et_plazo:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->plazo:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, v5, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposDeposito:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v6, v6, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_deposito:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    .line 133
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v5, v5, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposAjuste:[Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v6, v6, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "montoInt":I
    const/4 v3, 0x0

    .line 141
    .local v3, "plazoInt":I
    :try_start_0
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->monto:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->plazo:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 155
    :goto_1
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Lcl/santander/smartphone/InversionesDepositosInvertir;->access$0(I)V

    .line 158
    iget-object v4, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 159
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f060062

    new-instance v5, Lcl/santander/smartphone/InversionesDepositosSimular;

    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v6, v6, Lcl/santander/smartphone/InversionesDepositosInvertir;->depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    iget-object v7, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$1;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v7, v7, Lcl/santander/smartphone/InversionesDepositosInvertir;->ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    invoke-direct {v5, v2, v3, v6, v7}, Lcl/santander/smartphone/InversionesDepositosSimular;-><init>(IILcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;)V

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 160
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 161
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 163
    return-void

    .line 143
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
