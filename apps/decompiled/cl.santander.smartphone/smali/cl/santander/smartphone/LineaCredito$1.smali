.class Lcl/santander/smartphone/LineaCredito$1;
.super Ljava/lang/Object;
.source "LineaCredito.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/LineaCredito;->initPageAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/LineaCredito;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/LineaCredito;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/LineaCredito$1;->this$0:Lcl/santander/smartphone/LineaCredito;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/LineaCredito$1;->this$0:Lcl/santander/smartphone/LineaCredito;

    invoke-virtual {v0, p1}, Lcl/santander/smartphone/LineaCredito;->updateButtonsLocked(I)V

    .line 82
    return-void
.end method
