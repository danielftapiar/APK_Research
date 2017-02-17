.class final Lnet/veritran/vtuserapplication/states/VTTokenState$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/states/TokenCounterInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/states/VTTokenState;->b(I)Lnet/veritran/vtuserapplication/states/TokenCounterInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a()Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenGenerationCnt(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->b:J

    return-void
.end method


# virtual methods
.method public final addCounterValue()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    :goto_0
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    goto :goto_0
.end method

.method public final getCounterValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    return-wide v0
.end method

.method public final resetCounterValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->b:J

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    return-void
.end method

.method public final saveCounterValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->a()Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    move-result-object v0

    iget-wide v2, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenGenerationCnt(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->b:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lnet/veritran/vtuserapplication/states/VTTokenState$1;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
