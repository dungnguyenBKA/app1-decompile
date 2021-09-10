.class public Lbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/io/InputStream;",
        "Lcom/caverock/androidsvg/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/caverock/androidsvg/c;->f(Ljava/io/InputStream;)Lcom/caverock/androidsvg/c;

    move-result-object p1

    int-to-float p2, p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/c;->m(F)V

    int-to-float p2, p3

    .line 4
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/c;->l(F)V

    .line 5
    new-instance p2, Lrg;

    invoke-direct {p2, p1}, Lrg;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Cannot load SVG from stream"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
