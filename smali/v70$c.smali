.class final Lv70$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lv70;


# direct methods
.method constructor <init>(Lv70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv70$c;->b:Lv70;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv70$c;->b:Lv70;

    invoke-virtual {v0}, Lv70;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv70$c;->b:Lv70;

    .line 2
    invoke-virtual {v0, p1}, Lv70;->c(Ljava/lang/Object;)Lv70$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv70$c$a;

    invoke-direct {v0, p0}, Lv70$c$a;-><init>(Lv70$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv70$c;->b:Lv70;

    .line 2
    invoke-virtual {v0, p1}, Lv70;->c(Ljava/lang/Object;)Lv70$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lv70;->e(Lv70$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv70$c;->b:Lv70;

    iget v0, v0, Lv70;->d:I

    return v0
.end method
