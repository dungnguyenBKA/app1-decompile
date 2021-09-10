.class public abstract Lrs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lrs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus;",
            ">;)",
            "Lrs;"
        }
    .end annotation

    .line 1
    new-instance v0, Lls;

    invoke-direct {v0, p0}, Lls;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Ld40;
    .locals 3

    .line 1
    new-instance v0, Lp40;

    invoke-direct {v0}, Lp40;-><init>()V

    .line 2
    const-class v1, Lrs;

    sget-object v2, Lfs;->a:Lfs;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 3
    const-class v1, Lls;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 4
    const-class v1, Lus;

    sget-object v2, Lis;->a:Lis;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 5
    const-class v1, Los;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 6
    const-class v1, Lss;

    sget-object v2, Lgs;->a:Lgs;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 7
    const-class v1, Lms;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 8
    const-class v1, Lds;

    sget-object v2, Les;->a:Les;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 9
    const-class v1, Lks;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 10
    const-class v1, Lts;

    sget-object v2, Lhs;->a:Lhs;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 11
    const-class v1, Lns;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 12
    const-class v1, Lws;

    sget-object v2, Ljs;->a:Ljs;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    .line 13
    const-class v1, Lqs;

    invoke-virtual {v0, v1, v2}, Lp40;->g(Ljava/lang/Class;Lg40;)Ll40;

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lp40;->f(Z)Lp40;

    .line 15
    invoke-virtual {v0}, Lp40;->e()Ld40;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus;",
            ">;"
        }
    .end annotation
.end method
