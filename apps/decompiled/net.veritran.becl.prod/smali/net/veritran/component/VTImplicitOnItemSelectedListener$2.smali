.class Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;
.super Ljava/lang/Object;
.source "VTImplicitOnItemSelectedListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTImplicitOnItemSelectedListener;->onChange(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTImplicitOnItemSelectedListener;

.field final synthetic val$onChangeAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTImplicitOnItemSelectedListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    .prologue
    .line 128
    iput-object p1, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;->this$0:Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    iput-object p2, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;->val$onChangeAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    iget-object v1, p0, Lnet/veritran/component/VTImplicitOnItemSelectedListener$2;->val$onChangeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 133
    return-void
.end method
