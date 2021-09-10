.class Lp40$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp40;->e()Ld40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp40;


# direct methods
.method constructor <init>(Lp40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp40$a;->a:Lp40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7

    .line 1
    new-instance v6, Lq40;

    iget-object v0, p0, Lp40$a;->a:Lp40;

    .line 2
    invoke-static {v0}, Lp40;->a(Lp40;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lp40$a;->a:Lp40;

    invoke-static {v0}, Lp40;->b(Lp40;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lp40$a;->a:Lp40;

    invoke-static {v0}, Lp40;->c(Lp40;)Lg40;

    move-result-object v4

    iget-object v0, p0, Lp40$a;->a:Lp40;

    invoke-static {v0}, Lp40;->d(Lp40;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lq40;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lg40;Z)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v6, p1, p2}, Lq40;->g(Ljava/lang/Object;Z)Lq40;

    .line 4
    invoke-virtual {v6}, Lq40;->i()V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lp40$a;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
