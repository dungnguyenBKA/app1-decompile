.class Lwg0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldh0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh0;",
            "Ljava/util/List<",
            "Lvg0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ldh0;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh0;",
            ")",
            "Ljava/util/List<",
            "Lvg0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
