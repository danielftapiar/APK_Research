.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1536
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1550
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1565
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "labeled"    # Landroid/view/View;

    .prologue
    .line 1540
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V

    .line 1541
    return-void
.end method

.method public setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1545
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1546
    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "labeled"    # Landroid/view/View;

    .prologue
    .line 1555
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V

    .line 1556
    return-void
.end method

.method public setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .prologue
    .line 1560
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1561
    return-void
.end method
