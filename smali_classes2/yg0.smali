.class public interface abstract Lyg0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyg0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyg0$a;

    invoke-direct {v0}, Lyg0$a;-><init>()V

    sput-object v0, Lyg0;->a:Lyg0;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
