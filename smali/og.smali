.class public final Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log$a;,
        Log$b;,
        Log$c;,
        Log$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzf<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzf<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final c:Lzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzf<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lzf;Lzf;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzf<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lzf<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Log;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Log;->b:Lzf;

    .line 4
    iput-object p3, p0, Log;->c:Lzf;

    .line 5
    iput-object p4, p0, Log;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lhd;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 11

    .line 1
    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 2
    new-instance p1, Lzf$a;

    new-instance v9, Lxk;

    invoke-direct {v9, v4}, Lxk;-><init>(Ljava/lang/Object;)V

    new-instance v10, Log$d;

    iget-object v1, p0, Log;->a:Landroid/content/Context;

    iget-object v2, p0, Log;->b:Lzf;

    iget-object v3, p0, Log;->c:Lzf;

    iget-object v8, p0, Log;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Log$d;-><init>(Landroid/content/Context;Lzf;Lzf;Landroid/net/Uri;IILcom/bumptech/glide/load/i;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p1
.end method
