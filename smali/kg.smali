.class public Lkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzf<",
        "Lsf;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf<",
            "Lsf;",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lkg;->b:Lcom/bumptech/glide/load/h;

    return-void
.end method

.method public constructor <init>(Lyf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf<",
            "Lsf;",
            "Lsf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkg;->a:Lyf;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lsf;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 0

    .line 1
    check-cast p1, Lsf;

    .line 2
    iget-object p2, p0, Lkg;->a:Lyf;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3, p3}, Lyf;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsf;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lkg;->a:Lyf;

    invoke-virtual {p2, p1, p3, p3, p1}, Lyf;->b(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 5
    :cond_1
    :goto_0
    sget-object p2, Lkg;->b:Lcom/bumptech/glide/load/h;

    invoke-virtual {p4, p2}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 6
    new-instance p3, Lzf$a;

    new-instance p4, Lad;

    invoke-direct {p4, p1, p2}, Lad;-><init>(Lsf;I)V

    invoke-direct {p3, p1, p4}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p3
.end method
