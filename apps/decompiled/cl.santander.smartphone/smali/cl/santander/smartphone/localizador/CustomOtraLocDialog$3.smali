.class Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;
.super Ljava/lang/Object;
.source "CustomOtraLocDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_buscar:Landroid/widget/Button;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$4(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 129
    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;

    move-result-object v2

    .line 130
    const-string v3, "input_method"

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;
    invoke-static {v2}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->access$3(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 132
    const/4 v1, 0x1

    .line 134
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
