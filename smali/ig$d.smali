.class public Lig$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;
.implements Lig$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lag<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lig$c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig$d;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/net/Uri;)Luc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Luc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfd;

    iget-object v1, p0, Lig$d;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lfd;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public c(Ldg;)Lzf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lig;

    invoke-direct {p1, p0}, Lig;-><init>(Lig$c;)V

    return-object p1
.end method
