"use strict";

function LoadBinaryResource(url, OnSuccess, OnError) {
    let req = new XMLHttpRequest();
    // open might fail, when we try to open an unsecure address, when the main page is secure
    try {
        req.open('GET', url, true);
    } catch (err) {
        OnError(err);
        return;
    }
    req.responseType = "arraybuffer";
    req.onreadystatechange = function () {
        if (req.readyState !== 4) {
            return;
        }
        if ((req.status !== 200) && (req.status !== 0)) {
            OnError("Error: Could not load file " + url);
            return;
        }
        let arrayBuffer = req.response;
        if (arrayBuffer) {
            OnSuccess(arrayBuffer);
        } else {
            OnError("Error: No data received from: " + url);
        }
    };
    req.send(null);
}

function DownloadAllAsync(urls, OnSuccess, OnError) {
    let pending = urls.length;
    let result = [];
    if (pending === 0) {
        setTimeout(OnSuccess.bind(null, result), 0);
        return;
    }
    urls.forEach(function (url, i) {
        LoadBinaryResource(
            url,
            function (buffer) {
                if (result) {
                    result[i] = buffer;
                    pending--;
                    if (pending === 0) {
                        OnSuccess(result);
                    }
                }
            },
            function (error) {
                if (result) {
                    result = null;
                    OnError(error);
                }
            }
        );
    });
}

export {DownloadAllAsync}