.class public interface abstract Lwg0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lwg0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwg0$a;

    invoke-direct {v0}, Lwg0$a;-><init>()V

    sput-object v0, Lwg0;->a:Lwg0;

    return-void
.end method


# virtual methods
.method public abstract a(Ldh0;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh0;",
            "Ljava/util/List<",
            "Lvg0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ldh0;)Ljava/util/List;
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
.end method
