.class final Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;

    invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)V

    return-object v1
.end method