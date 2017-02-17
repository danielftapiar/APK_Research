.class Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;
.super Ljava/lang/Object;
.source "CustomOtraLocDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$3(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "direccion":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;

    move-result-object v4

    .line 97
    const-string v5, "input_method"

    .line 96
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$3(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    new-instance v0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;)V

    .line 101
    .local v0, "asLoc":Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-virtual {v0, v4}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    const/4 v3, 0x0

    .line 112
    .end local v0    # "asLoc":Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
