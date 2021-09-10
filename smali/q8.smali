.class public Lq8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lq8;


# instance fields
.field private final a:Lc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq8;

    invoke-direct {v0}, Lq8;-><init>()V

    sput-object v0, Lq8;->b:Lq8;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lc0;-><init>(I)V

    iput-object v0, p0, Lq8;->a:Lc0;

    return-void
.end method

.method public static b()Lq8;
    .locals 1

    .line 1
    sget-object v0, Lq8;->b:Lq8;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/airbnb/lottie/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8;->a:Lc0;

    invoke-virtual {v0, p1}, Lc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/e;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/airbnb/lottie/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq8;->a:Lc0;

    invoke-virtual {v0, p1, p2}, Lc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
