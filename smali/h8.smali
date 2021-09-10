.class public Lh8;
.super Ls7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ls7<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgc;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ls7;-><init>(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Ls7;->e:Lgc;

    .line 3
    iput-object p2, p0, Lh8;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method c()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls7;->e:Lgc;

    iget-object v4, p0, Lh8;->i:Ljava/lang/Object;

    .line 2
    iget v7, p0, Ls7;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    move v5, v7

    move v6, v7

    .line 3
    invoke-virtual/range {v0 .. v7}, Lgc;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method h(Lec;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh8;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7;->e:Lgc;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ls7;->i()V

    :cond_0
    return-void
.end method

.method public k(F)V
    .locals 0

    .line 1
    iput p1, p0, Ls7;->d:F

    return-void
.end method
