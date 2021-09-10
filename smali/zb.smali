.class public Lzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/airbnb/lottie/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyb;

    invoke-direct {v0}, Lyb;-><init>()V

    sput-object v0, Lzb;->a:Lcom/airbnb/lottie/j;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lzb;->a:Lcom/airbnb/lottie/j;

    check-cast p0, Lyb;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lzb;->a:Lcom/airbnb/lottie/j;

    check-cast v0, Lyb;

    invoke-virtual {v0, p0}, Lyb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lzb;->a:Lcom/airbnb/lottie/j;

    check-cast v0, Lyb;

    invoke-virtual {v0, p0, p1}, Lyb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
