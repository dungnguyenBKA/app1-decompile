.class Ls80$r$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls80$r;->a(Lj60;Lz80;)Lz60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lz60;


# direct methods
.method constructor <init>(Ls80$r;Lz60;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls80$r$a;->a:Lz60;

    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls80$r$a;->a:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    iget-object v0, p0, Ls80$r$a;->a:Lz60;

    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
