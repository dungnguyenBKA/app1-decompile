.class final Lz6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll7;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lr7;


# direct methods
.method constructor <init>(Lr7;Lz6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz6$b;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lz6$b;->b:Lr7;

    return-void
.end method

.method static synthetic a(Lz6$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lz6$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lz6$b;)Lr7;
    .locals 0

    .line 1
    iget-object p0, p0, Lz6$b;->b:Lr7;

    return-object p0
.end method
