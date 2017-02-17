.class Lcl/santander/smartphone/CustomListaAccionesCompraDialog$1;
.super Ljava/lang/Object;
.source "CustomListaAccionesCompraDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$1;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$1;->this$0:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    iget-object v0, v0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->lacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    # getter for: Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->access$0(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
