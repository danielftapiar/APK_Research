.class Lcl/santander/smartphone/localizador/CustomOtraLocDialog$1;
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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$1;->this$0:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    invoke-virtual {v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->dismiss()V

    .line 80
    return-void
.end method
