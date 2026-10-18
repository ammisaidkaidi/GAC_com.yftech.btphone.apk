package androidx.core.net;

/* loaded from: /home/user/work/dex/classes.dex */
public class ParseException extends RuntimeException {
    public final String response;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseException(String str) {
        super(str);
        this.response = str;
    }
}
