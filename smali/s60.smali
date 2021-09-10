.class public final Ls60;
.super Lp60;
.source "SourceFile"


# instance fields
.field private final a:Lv70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv70<",
            "Ljava/lang/String;",
            "Lp60;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp60;-><init>()V

    .line 2
    new-instance v0, Lv70;

    invoke-direct {v0}, Lv70;-><init>()V

    iput-object v0, p0, Ls60;->a:Lv70;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ls60;

    if-eqz v0, :cond_0

    check-cast p1, Ls60;

    iget-object p1, p1, Ls60;->a:Lv70;

    iget-object v0, p0, Ls60;->a:Lv70;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Lp60;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    if-nez p2, :cond_0

    sget-object p2, Lr60;->a:Lr60;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lv70;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lr60;->a:Lr60;

    goto :goto_0

    :cond_0
    new-instance v0, Lu60;

    invoke-direct {v0, p2}, Lu60;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1, p2}, Lv70;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lr60;->a:Lr60;

    goto :goto_0

    :cond_0
    new-instance v0, Lu60;

    invoke-direct {v0, p2}, Lu60;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1, p2}, Lv70;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lr60;->a:Lr60;

    goto :goto_0

    :cond_0
    new-instance v0, Lu60;

    invoke-direct {v0, p2}, Lu60;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1, p2}, Lv70;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lp60;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0}, Lv70;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lp60;
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1}, Lv70;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp60;

    return-object p1
.end method

.method public o(Ljava/lang/String;)Lm60;
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1}, Lv70;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm60;

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ls60;
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1}, Lv70;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls60;

    return-object p1
.end method

.method public q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls60;->a:Lv70;

    invoke-virtual {v0, p1}, Lv70;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
