.class Lcom/mwr/dz/views/ConnectorStatusIndicator$1;
.super Ljava/lang/Object;
.source "ConnectorStatusIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/views/ConnectorStatusIndicator;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/views/ConnectorStatusIndicator;


# direct methods
.method constructor <init>(Lcom/mwr/dz/views/ConnectorStatusIndicator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;->this$0:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;->this$0:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    # getter for: Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->access$0(Lcom/mwr/dz/views/ConnectorStatusIndicator;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;->this$0:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    # getter for: Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->access$0(Lcom/mwr/dz/views/ConnectorStatusIndicator;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;->this$0:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    # getter for: Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->access$0(Lcom/mwr/dz/views/ConnectorStatusIndicator;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 72
    return-void
.end method
