.class public final Liu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqt<",
        "Lfu;",
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

.method public static a()Liu;
    .locals 1

    .line 1
    invoke-static {}, Liu$a;->a()Liu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lfu;->a:Lfu;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
