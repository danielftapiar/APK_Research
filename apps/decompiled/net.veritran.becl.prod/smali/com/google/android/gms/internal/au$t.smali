.class final Lcom/google/android/gms/internal/au$t;
.super Lcom/google/android/gms/internal/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/az;",
        ">.c<",
        "Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Lcom/google/android/gms/common/data/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$t;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/k$c;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;Lcom/google/android/gms/common/data/d;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Lcom/google/android/gms/common/data/d;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/data/d;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;->onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/d;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/au$t;->a(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Lcom/google/android/gms/common/data/d;)V

    return-void
.end method
