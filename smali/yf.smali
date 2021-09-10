.class public Lyf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lel<",
            "Lyf$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lyf$a;

    invoke-direct {v0, p0, p1, p2}, Lyf$a;-><init>(Lyf;J)V

    iput-object v0, p0, Lyf;->a:Lel;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lyf$b;->a(Ljava/lang/Object;II)Lyf$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lyf;->a:Lel;

    invoke-virtual {p2, p1}, Lel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lyf$b;->b()V

    return-object p2
.end method

.method public b(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lyf$b;->a(Ljava/lang/Object;II)Lyf$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lyf;->a:Lel;

    invoke-virtual {p2, p1, p4}, Lel;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
