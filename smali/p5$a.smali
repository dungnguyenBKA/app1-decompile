.class Lp5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5;->d(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lp5;


# direct methods
.method constructor <init>(Lp5;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp5$a;->c:Lp5;

    iput-object p2, p0, Lp5$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp5$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La5;

    .line 2
    iget-object v2, p0, Lp5$a;->c:Lp5;

    iget-object v2, v2, Lp5;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, La5;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
