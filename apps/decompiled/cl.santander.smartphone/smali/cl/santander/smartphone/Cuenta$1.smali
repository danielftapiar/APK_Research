.class Lcl/santander/smartphone/Cuenta$1;
.super Ljava/lang/Object;
.source "Cuenta.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Cuenta;->initPageAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Cuenta;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Cuenta;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Cuenta$1;->this$0:Lcl/santander/smartphone/Cuenta;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta$1;->this$0:Lcl/santander/smartphone/Cuenta;

    invoke-virtual {v0, p1}, Lcl/santander/smartphone/Cuenta;->updateButtonsLocked(I)V

    .line 90
    return-void
.end method
