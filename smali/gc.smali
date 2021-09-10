.class public Lgc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfc<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfc;

    invoke-direct {v0}, Lfc;-><init>()V

    iput-object v0, p0, Lgc;->a:Lfc;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lgc;->b:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lgc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgc;->a:Lfc;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfc;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lfc;

    .line 3
    iget-object p1, p0, Lgc;->b:Ljava/lang/Object;

    return-object p1
.end method
