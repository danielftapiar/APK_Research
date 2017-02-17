.class public Lnet/veritran/utils/VTAndroidUtils;
.super Ljava/lang/Object;
.source "VTAndroidUtils.java"


# static fields
.field private static final CONST_VTUICOMPONENT_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$string"

    const-string v2, "app_name"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lnet/veritran/utils/VTAndroidUtils;->CONST_VTUICOMPONENT_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUIComponentToView(Lnet/veritran/component/VTUIComponent;Landroid/view/View;)V
    .locals 2
    .param p0, "component"    # Lnet/veritran/component/VTUIComponent;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 15
    if-eqz p1, :cond_0

    .line 17
    sget v0, Lnet/veritran/utils/VTAndroidUtils;->CONST_VTUICOMPONENT_TAG:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 23
    sget v1, Lnet/veritran/utils/VTAndroidUtils;->CONST_VTUICOMPONENT_TAG:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 25
    .local v0, "wrcomponent":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lnet/veritran/component/VTUIComponent;>;"
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/VTUIComponent;

    .line 30
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
