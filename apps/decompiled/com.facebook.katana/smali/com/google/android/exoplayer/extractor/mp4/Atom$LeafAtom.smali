.class public final Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "Atom.java"


# instance fields
.field public final ab:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 110
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 111
    return-void
.end method


# virtual methods
.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
